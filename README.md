# Mars Rover Challenge
This app solves the mars rover challenge which can be found here:
https://code.google.com/archive/p/marsrovertechchallenge/

It was assumed that the rovers cannot move out of bounds. Any amount of rovers can be added to the plateau.

## Installation

Before running the application install bundle dependencies using:

    $ bundle install

## Usage
To run the application execute:

    $ rake run_challenge

To run the tests execute:

	$ rspec

## Example run
    $ rake run_challenge
    Welcome to the mars rover challenge!
    -Type the upper right coordinates of the plateau first followed by all rover information.
    -Plateau coordinates format: 5 5
    -Rover position format: 2 2 E
    -Rover instructions format: LMLRMML
    -Type 'end' to process all rover instructions
    10 10
    5 5 E
    MLRMMLRM
    1 2 N
    LMLMLMLMM
    8 7 S
    MMMLMMRMLLMR
    end

    Output:
    9 5 E
    1 3 N
    10 4 E

    Plateau:
     + + + + + + + + + + +
     + + + + + + + + + + +
     + + + + + + + + + + +
     + + + + + + + + + + +
     + + + + + + + + + + +
     + + + + + + + + + 1 +
     + + + + + + + + + + 3
     + 2 + + + + + + + + +
     + + + + + + + + + + +
     + + + + + + + + + + +
     + + + + + + + + + + +

