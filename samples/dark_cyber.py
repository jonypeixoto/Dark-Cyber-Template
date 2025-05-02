#
# In a land shrouded in mystery...
#

# Python Class for Dark Cyber
class DarkCyber:
    def __init__(self, name, construction_year, destruction_year, features):
        self.name = name
        self.construction_year = construction_year
        self.destruction_year = destruction_year
        self.features = features

    def get_duration(self):
        return self.destruction_year - self.construction_year

# Function to create a Dark Cyber and return its duration
def create_cyber(data):
    if not data or 'name' not in data:
        return {'error': 'name is required'}

    cyber = DarkCyber(
        name=data['name'],
        construction_year=data['construction_year'],
        destruction_year=data['destruction_year'],
        features=data.get('features', [])
    )
    duration = cyber.get_duration()
    message = f'The duration of {cyber.name} was {duration} years.'
    return {'message': message, 'features': cyber.features}

# Example data for creating a Dark Cyber
example_data = {
    'name': "Moonshadow Fortress",
    'construction_year': 980,
    'destruction_year': 1503,
    'features': ["Eerie Glow", "High Battlements"]
}

# Creating a Dark Cyber and printing the result
result = create_cyber(example_data)
print(result)

# ...there stood a Dark Cyber
