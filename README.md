# Eicosalingual
Comparing diversified syntaxes of a larger number of programming languages

Using a FORTRAN compiler, I started studying programming when I was an undergraduate student. Since then, I have learned many programming languages, including Pascal, C, Perl, and Python. Especially, knowing Perl unexpectedly hindered me from learning Python. Furthermore, knowing Python left Perl behind and degraded my skill of coding Perl. Slight syntax differences, such as usage of semicolons and how to write else if, irritate programmers who use multiple languages. Hence, I would like to summarize common and basic syntaxes of more than twenty programming languages.

## List of programming languages
| Programming language | Appeared | Designed |
| :-: | :-: | :-: |
| Fortran | 1957 | To replace assembly language with a compiled language |
| BASIC | 1964 | To enable general university students to use computers |
| Pascal | 1970 | To facilitate to develop well-structured programs  |
| C | 1972 | To develop the Unix operating system using a compiled language |
| SQL | 1974 | To process data in a relational database management system |
| AWK | 1977 | To extend the filtering features of grep and sed |
| Bourne shell | 1977 | To be a scripting language in addition to a command interpreter |
| C shell | 1978 | To be used as a Unix shell with C-style syntax |
| Objective-C | 1984 | To integrate Smalltalk-style messaging into C |
| C++ | 1985 | To integrate class-based object-oriented programming into C |
| Perl | 1987 | To be a Unix scripting language with powerful parsing abilities |
| Python | 1991 | To support multiple programming paradigms with code readability |
| R | 1993 | To perform statistical computing and graphics |
| Java | 1995 | To eliminate implementation dependencies using C-style OOP |
| PHP | 1995 | To build dynamic web sites and applications |
| JavaScript | 1995 | To implement a scripting language in web browsers |
| Ruby | 1995 | To make an object-oriented and easy-to-use scripting language |
| C# | 2000 | To target the Common Language Infrastructure proposed |
| Go | 2009 | To make a new C-style programming language unlike C++ |
| Rust | 2010 | To make a high-performance language like C++ with memory safety |
| Julia | 2012 | To make a high-performance language with dynamic typing |
| Swift | 2014 | To replace Objective-C by eliminating the baggage of C |

## Test environment
| Programming language | Linux | Distribution | Compiler or interpreter |
| :-: | :-: | :-: | :-: |
| Fortran | 2.6.32 | CentOS 6.2 | GCC 4.4.6 |
| BASIC | 4.4.0 | Ubuntu 16.04 | bwBASIC 2.20 |
| Pascal | 3.10.0 | CentOS 7.6 | Free Pascal 3.0.4 |
| C | 4.4.0 | Ubuntu 16.04 | GCC 5.4.0 |
| SQL | 3.10.0 | CentOS 7.6 | MariaDB 10.5.5 |
| AWK | 3.14.27 | Fedora 19 | GNU Awk 4.0.2 |
| Bourne shell | 4.11.3 | Fedora 25 | GNU Bash 4.3.43 |
| C shell | 3.10.0 | CentOS 7.8 | tcsh 6.18.01 |
| Objective-C | 5.10.7 | Fedora 33 | GCC 10.2.1 |
| C++ | 2.6.32 | CentOS 6.8 | GCC 4.4.7 |
| Perl | 5.9.16 | Fedora 33 | Perl 5.32.0 |
| Python | 4.4.49 | openSUSE 42.2 | Python 3.8.5 |
| R | 3.10.0 | RHEL 7.3 | R 3.4.1 |
| Java | 2.6.32 | RHEL 6.2 | OpenJDK 15.0.1 |
| PHP | 4.4.0 | Ubuntu 18.04 | PHP 8.0.1 |
| JavaScript | 3.10.0 | CentOS 7.6 | Node.js 6.17.1 |
| Ruby | 4.18.0 | CentOS 8.3 | Ruby 2.5.5 |
| C# | 4.18.0 | CentOS 8.3 | .NET SDK 5.0.100 |
| Go | 4.18.0 | CentOS 8.3 | Go 1.14.12 |
| Rust | 4.18.0 | CentOS 8.3 | Rust 1.45.2 |
| Julia | 2.6.32 | RHEL 6.2 | Julia 1.5.3 |
| Swift | 4.4.0 | Ubuntu 16.04 | Swift 5.3.2 |

## Fist theme
As the first theme, the sample programs calculate sum of odd integers from 1. They also examine whether the sum equals to the square of the number of odd integers. Here, they check all integers from 0 to 170 to obtain odd numbers that are added.

![Figure 1](https://github.com/glires/Eicosalingual/blob/main/etc/figure1.png "Figure 1")
### Syntaxes covered
* writing comments
* importing header files or modules
* declaration of constnat values
* declaration of variables
* assignment to variables
* arithmetics (addition, remainder, and power)
* loop (for)
* choice (if-elseif-else)
* blocks for loop or choice
* empty statement
* treating integers, floating point numbers, Boolean data, and strings
* definition of a function or subroutine
* arguments and return values of a function
* how to put new lines in a long single-line code

## Classification
| Type of else-if | Language |
| :-: | :-: |
| else if | Fortran, Pascal, C, AWK, C shell, Objective-C, C++, R, Java, JavaScript, C#, Go, Rust, Swift |
| elseif | BASIC SQL, PHP, Julia |
| elsif | Perl, Ruby |
| elif | Bourne shell, Python |

| Exponentiation | Language |
| :-: | :-: |
| ** | Fortran, AWK, Perl, Python, R, PHP, Ruby |
| pow() | C, SQL, Objective-C, C++, Java, JavaScript, C#, Go, Rust, Swift |
| ^ | R, Julia |
| Unavailable | BASIC, Pascal, Bourne shell, C shell |
