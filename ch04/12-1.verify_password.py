#!/usr/bin/env python3
import crypt
import sys

def verify_password(stored_hash, entered_password):
    # Hash the entered password with the stored hash's salt and algorithm
    hashed_password = crypt.crypt(entered_password, stored_hash)
    
    if hashed_password == stored_hash:
        print("Password is correct!")
        return True
    else:
        print("Password is incorrect.")
        return False

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: verify_password.py <stored_hash> <entered_password>")
        sys.exit(1)
    
    stored_hash = sys.argv[1]
    entered_password = sys.argv[2]
    if verify_password(stored_hash, entered_password):
        sys.exit(0)
    else:
        sys.exit(1)
