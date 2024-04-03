actions = ["left", "right", "suck"]

def get_action(percept):
    location, situation = percept
    if situation == "dirty":
        return "suck"
    elif location == "A":
        return "right"
    else:
        return "left"


def reflex_agent(percept):
    action = get_action(percept)
    print(f"Percept: {percept}, Action: {action}")
    return action


while True:
    location = input("Enter location (A/B): ")
    situation = input("Is the place Clean or dirty (clean/dirty): ")
    percept = (location, situation)
    action = reflex_agent(percept)
    continue_loop = input("Do you want to continue (y/n)? ")
    if continue_loop.lower() != "y":
        break
