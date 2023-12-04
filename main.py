import time


def generate_random_number():
    return random.randint(1, 100)  # Pas het bereik aan zoals nodig

while True:
    random_number = generate_random_number()
    print(f"Willekeurig getal: {random_number}")
    time.sleep(10)  # Wacht 10 seconden voordat het volgende getal wordt gegenereerd
