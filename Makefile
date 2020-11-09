# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cvoltorb <cvoltorb@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/07 19:26:18 by cvoltorb          #+#    #+#              #
#    Updated: 2020/11/08 19:02:53 by cvoltorb         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY:	all clean fclean re bonus %.o

NAME =	libft.a

SRC =	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
		ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
		ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_strcmp.c \
		ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		ft_putendl.c ft_putstr.c ft_putchar.c \
		ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
		ft_lstclear.c ft_lstiter.c get_next_line.c get_next_line_utils.c \
		ft_lstnew.c ft_lstadd_front.c ft_lstprint.c

HDR = ./
OBJ = $(SRC:%.c=%.o)
CC = gcc -Wall -Wextra -Werror -c

all: $(NAME)

$(NAME): $(OBJ)
	@$(CC) $(SRC)
	@ar -rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.c libft.h
	@$(CC) -I$(HDR) $< -o $@

clean:
	@rm -f $(OBJ) $(BNSOBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all
