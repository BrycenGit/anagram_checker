# _Anagram Checker_

_Version 1, 9/25/2020_

#### _An application to check if two words are anagrams or not_

### By: _**Brycen Bartolome**_

## Description

_this program will take in two words and let the user know whether it is an anamgram or not_

## Specifications

| Spec | Behavior                                                    | Input                | Output                |
| ---- | ----------------------------------------------------------- | -------------------- | --------------------- |
| 1    | will check both inputs to see if they contain vowels        | 'hello'              | true                  |
| 2    | will remove special characters and spaces from both phrases | 'hello my friend!'   | 'hellomyfriend'       |
| 3    | will make all characters lowercase in string                | 'Hello'              | 'hello'               |
| 4    | will check if the two phrases are anagrams                  | 'hello' & 'good bye' | 'is not an anagram'   |
| 5    | will check if the two phrases are antigrams                 | 'halo' & 'bye'       | 'is antigram'         |
| 6    | will check the return with no vowels in each word           | 'lll' & 'jjj'        | 'these are not words' |

## Setup & Installation

- Clone project to desktop <code>\$ git clone https://github.com/BrycenGit/anagram_checker.git</code>
- Move to project directory <code>\$ cd anagram_checker</code>
- Open project in vscode <code>\$ code .</code>
- In terminal run <code>\$ bundle install</code>
- In terminal run <code>\$ rspec</code>
- In vscode terminal run <code>\$ ruby app.rb</code>

## Known Bugs

_There are no known bugs_

## Technologies Used

- Ruby
- Gems: rspec, rack

### License

Copyright (c) 2020 **Brycen Bartolome**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
