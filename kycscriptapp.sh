#!/bin/bash

echo "Welcome to TravelEasy KYC Verification"

# Collect Full Name
read -p "Enter your full name: " full_name

# Collect Date of Birth
read -p "Enter your date of birth (YYYY-MM-DD): " dob

# Collect Government ID Number
read -p "Enter your government-issued ID number: " id_number

# Collect Address
read -p "Enter your full address: " address

# Collect Phone Number
read -p "Enter your phone number (10 digits): " phone

# Collect Email
read -p "Enter your email address: " email

# Basic validations
valid=true

# Validate phone number
if ! [[ $phone =~ ^[0-9]{10}$ ]]; then
    echo "Invalid phone number. Must be 10 digits."
    valid=false
fi

# Validate email format (basic)
if ! [[ $email =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$ ]]; then
    echo "Invalid email address."
    valid=false
fi

# Summary
if [ "$valid" = true ]; then
    echo ""
    echo "----- KYC Summary -----"
    echo "Full Name       : $full_name"
    echo "Date of Birth   : $dob"
    echo "ID Number       : $id_number"
    echo "Address         : $address"
    echo "Phone Number    : $phone"
    echo "Email Address   : $email"
    echo "------------------------"
    echo "KYC Submission Successful. Thank you!"
else
    echo ""
    echo "KYC Submission Failed due to invalid input."
fi

