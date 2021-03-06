# App Overview
    This app is a place to memorialize your beloved pets and to journal all the great times you shared together. I was inspired to create this app because my adorable English Bulldog, Tankie, crossed the Rainbow Bridge in 2020. Our pets are family and this is a place to honor and cherish their memories.

    *Please note that this is a work in progress- enjoy!*

# User Stories
    Users will be able to:
    -sign up, log in, log out

    Users can:
    -create a pet profile
    -view their pet collection
    -update a pet profile
    -delete a pet profile 

    -create memories for each pet
    -view their pet's memories
    -update a pet memory
    -delete a pet profile 

# Wireframing (attributes and associations)
    Models will be:
    Pet, Memory

    User attributes:
        username
        email
        password_digest  -->

    User associations:
        has_secure_password
        has_many :pets
        has_many :memories
        has_many :commented_pets, through: :comments, source: :pet -->


    Pet attributes:
        name
        kind
        gender
        age
        born
        passed
        bio 
        quote
        image

        <!-- user_id -->

    Pet associations:
        <!-- belongs_to :user -->
        has_many :memories


    Memory attributes:
        title
        date: datetime?
        description
        image
        favorite
        
        <!-- user_id -->
        pet_id 

    Memory associations:
        <!-- belongs_to :user -->
        belongs_to :pet

# MVP
    *see spec.md file for checklist*

# Stretch Goals

* better styling and user experience
* update and delete capability
* add image upload functionality
