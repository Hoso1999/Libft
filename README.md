# Libft
This project aims to implement various C string functions, ctype functions, and list utility functions in C. The goal is to provide custom implementations of these functions for educational purposes and to enhance programming skills.

## Implemented Functions
All functions have ft_ prefix


| Functions|  Part 1  | Part 2      | Bonus         |
| ---------|----------|-------------|---------------|
| isalpha  | strlcpy  | substr      | lstnew        |
| isdigit  | toupper  | strjoin     | lstadd_front  |
| isalnum  | tolower  | strtrim     | lstsize       |
| isascii  | strchr   | split       | lstlast       |
| isprint  | strrchr  | itoa        | lstadd_back   |
| strlen   | strncmp  | strmapi     | lstdelone     |   
| memset   | memchr   | striteri    | lstclear      |
| bzero    | memcmp   | putchar_fd  | lstiter       |
| memcpy   | strnstr  | putstr_fd   | lstmap        |
| memmove  | atoi     | putendl_fd  | push_back     |
| calloc   | strdup   | putnbr_fd   | getline       |

The following functions have been implemented:

### String Functions

- `isalpha`: Determines if a character is alphabetic.
- `isdigit`: Determines if a character is a digit.
- `isalnum`: Determines if a character is alphanumeric.
- `isascii`: Determines if a character is an ASCII character.
- `isprint`: Determines if a character is printable.
- `strlen`: Computes the length of a string.
- `memset`: Fills a block of memory with a specified value.
- `bzero`: Sets a block of memory to zero.
- `memcpy`: Copies a block of memory.
- `memmove`: Moves a block of memory.
- `calloc`: Allocates and initializes a block of memory.
- `strdup`: Duplicates a string.
- `strlcpy`: Copies a string with size limitation.
- `toupper`: Converts a character to uppercase.
- `tolower`: Converts a character to lowercase.
- `strchr`: Finds the first occurrence of a character in a string.
- `strrchr`: Finds the last occurrence of a character in a string.
- `strncmp`: Compares two strings up to a specified length.
- `memcmp`: Compares two blocks of memory.
- `strnstr`: Locates a substring in a string up to a specified length.
- `atoi`: Converts a string to an integer.

### List Utility Functions

- `lstnew`: Creates a new list element.
- `lstadd_front`: Adds an element to the front of a list.
- `lstadd_back`: Adds an element to the back of a list.
- `lstsize`: Computes the size of a list.
- `lstlast`: Retrieves the last element of a list.
- `lstdelone`: Deletes a specific element from a list.
- `lstclear`: Removes all elements from a list.
- `lstiter`: Applies a function to each element of a list.
- `lstmap`: Applies a function to create a new list from an existing list.

## Bonus Functions

In addition to the above functions, the project also includes the following bonus functions:

- `strtrim`: Trims leading and trailing whitespace from a string.
- `strjoin`: Concatenates two strings.
- `substr`: Extracts a substring from a string.
- `striteri`: Applies a function to each character of a string with its index.
- `putchar_fd`: Writes a character to a file descriptor.
- `putstr_fd`: Writes a string to a file descriptor.
- `putendl_fd`: Writes a string followed by a newline to a file descriptor.
- `putnbr_fd`: Writes an integer to a file descriptor.
- `getline`: Reads a line from a file descriptor.

# Usage
Clone the repository:

   ```shell
   git clone https://github.com/Hoso1999/Libft.git
   ```
Use CMake to generate Makefile and set PATH_OF_BUILD
```bash
CMake -B PATH_OF_BUILD
```
Run make to build lib
```bash
make
```
Add to compiler options
```bash
-IPATH_OF_LIBRARY/include -LPATH_OF_BUILD -lft
```


# Examples
main.c
```C
#include "libft.h"

int main()
{
  int num = ft_atoi("150");
  ft_putnbr_fd(num, 1);
  return 0;
}
```


```C
#include "libft.h"

int main()
{
  list_t* lst = NULL;
  char* content = ft_strdup("example");
  ft_lstadd_back(&lst, ft_lstnew(content));
  ft_putstr_fd((char*)lst->content, 1);
  ft_lstclear(lst, free);
  return 0;
}
```

```C
#include "libft.h"

int main()
{
  int fd = open("file.txt");
  char* line;
  
  while(ft_getline(fd, &line) > 0)
  {
    ft_putendl_fd(line, 1);
    free(line);
  }
  
  return 0;
}
```

```C
#include "libft.h"

void iter(unsigned int i, char* str)
{
  ft_putchar_fd(ft_tolower(str[i]), 1);
}

int main()
{
  char* str = "example 1 oF usIng iterate ";
  ft_striteri(str, iter);
  return 0;
}
```

## Contributions

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.


















