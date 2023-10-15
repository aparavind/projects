import os
import json

def set_environment_variables(data, parent_key=""):
    for key, value in data.items():
        current_key = parent_key + "__" + key if parent_key else key

        if isinstance(value, dict):
            set_environment_variables(value, current_key)
        else:
            os.environ[current_key] = str(value)
            print(f'Set environment variable {current_key} to {os.environ[current_key]}')

json_file = 'config.json'

try:
    with open(json_file, 'r') as file:
        data = json.load(file)
        set_environment_variables(data)

except FileNotFoundError:
    print(f"Error: The file {json_file} does not exist.")
except json.JSONDecodeError:
    print(f"Error: Failed to parse the JSON file {json_file}.")
