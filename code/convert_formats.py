import argparse
import sys
import pyreadstat

parser = argparse.ArgumentParser(description='Convert formats file to csv')
parser.add_argument('--formatsfile', action="store", dest='f', required=True)
parser.add_argument('--datafile', action="store", dest='data', required=True)
parser.add_argument('--output', action="store", dest='output', required=True)
args = parser.parse_args()



df, meta = pyreadstat.read_sas7bcat(args.f)
print(df)
print(meta)
sys.exit(0)

result_dict = {}
current_key = None
with open(args.f, 'r', encoding='iso-8859-1') as f:
    for line in f:
        line = line.strip()  # Remove leading/trailing whitespace
        if not line or line == ";":
            continue  # Skip empty lines and the end of the dictionary

        # Check if the line defines a new key
        if line.startswith("value "):
            current_key = line.split()[1]  # Get the key name (e.g., QN87f)            
            is_float=False
            if current_key.endswith('f'):
                current_key=current_key[:-1]
                is_float=True
            

                
            current_key=current_key.replace('$','')            
            result_dict[current_key] = {}  # Initialize a new dictionary for this key
        elif current_key is not None:
            # Process the key-value pairs if current_key is set
            if '=' in line:
                key_value_pair = line.split("=")

                if is_float:
                    try: 
                        if current_key.startswith("QN"):
                            key = float(key_value_pair[0].replace('"','').strip())
                        else:
                            key = key_value_pair[0].replace('"','').strip()
                        
                    except ValueError:
                        key = key_value_pair[0].strip()

                else:
                    key = key_value_pair[0].strip()  # Get the key (e.g., .)
                
                value = key_value_pair[1].strip().strip('"')  # Get the value (e.g., <Missing>)
                #print(f"key: {key}, val:{value}")
                # Add to the current dictionary
                result_dict[current_key][key] = value
            else:
                # Handle cases where key is on the next line
                if line:  # Ensure the line is not empty
                    current_key = line.strip()  # Get the key (e.g., .)
                    if current_key.endswith('f'):
                        current_key=current_key[:-1]
                        is_float=True
                    else:
                        is_float=False
                    current_key=current_key.replace('$','')
                    if current_key not in result_dict:
                        result_dict[current_key] = {}
                    # if key and current_key in result_dict:  # Check if the current key exists

                    #     # Assuming the value is the last known value or a placeholder
                    #     result_dict[current_key][key] = result_dict[current_key].get(key, "<No Value>")
        #if current_key=='Q2':
        #    sys.exit(0)

# Output the resulting dictionary
#print(result_dict['QN86f'])


#sys.exit(0)

df, meta = pyreadstat.read_sas7bdat(args.data)

# print(df['QN86'])
# print("---------")
# df['QN86'] = df['QN86'].map(result_dict['QN86'])
# print(df['QN86'])
# print(result_dict['QN86'])

print(df['Q1'])
df['Q1'] = df['Q1'].map(result_dict['Q1'])
print(df['Q1'])
print(result_dict['Q1'])

#sys.exit(0)

for key in result_dict:
   # print(f'{key} ::::::::::::::::::::::::::::::::::::::::::')
    try:
        df[key] = df[key].map(result_dict[key])
    except Exception as e:
        print(e)
    
#print(result_dict)
df.to_csv(args.output)