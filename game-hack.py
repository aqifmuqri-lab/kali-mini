import random, time
print("🎮 GAME HACK CENTER v3.0")
print("[1] Slot Hack")
print("[2] Diamond Generator (simulasi)")
print("[3] Snake Hack")
pil = input("Pilih: ")
if pil == "1":
    print(f"Kau dapat {random.randint(10000,999999)} coins!")
elif pil == "2":
    id = input("ID ML: ")
    time.sleep(1)
    print(f"Done! {random.randint(1000,5000)} diamond untuk {id} (simulasi)")
elif pil == "3":
    print("Snake score: 9999 - WIN!")
