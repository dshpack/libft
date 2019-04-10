# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dshpack <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/24 20:56:37 by dshpack           #+#    #+#              #
#    Updated: 2018/03/24 20:56:41 by dshpack          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

OFILES = *.o

CFILES = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c\
ft_isdigit.c ft_isprint.c ft_itoa.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c\
ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c\
ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar_fd.c\
ft_putchar.c ft_putendl_fd.c ft_putendl.c ft_putnbr_fd.c ft_putnbr.c\
ft_putstr_fd.c ft_putstr.c ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c\
ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c\
ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c\
ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c\
ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c\
my_ft_findandchange.c my_ft_findsymbol.c my_ft_leterlength.c my_ft_lstlenght.c\
my_ft_resize_s.c my_ft_wordscount.c

CC=gcc -Wall -Wextra -Werror -c

all: $(NAME)

$(NAME): $(OFILES)

$(OFILES): $(CFILES)
	$(CC) $(CFILES)
	ar rcs libft.a $(OFILES)
	ranlib $(NAME)

clean:
	rm -fv $(OFILES)

fclean:	clean
	rm -fv $(NAME)

re: fclean all