# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahel-mou <ahel-mou@student-1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/16 10:17:43 by ahel-mou          #+#    #+#              #
#    Updated: 2021/12/16 18:13:18 by ahel-mou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = so_long.a

CC = gcc

FLAGS = -Wall -Werror -Wextra

LB_SRC = ./my_lib/libft/ft_atoi.c ./my_lib/libft/ft_bzero.c ./my_lib/libft/ft_memcpy.c ./my_lib/libft/ft_memchr.c ./my_lib/libft/ft_memmove.c ./my_lib/libft/ft_memset.c ./my_lib/libft/ft_memcmp.c\
	./my_lib/libft/ft_strchr.c ./my_lib/libft/ft_strrchr.c ./my_lib/libft/ft_strdup.c ./my_lib/libft/ft_strlcat.c ./my_lib/libft/ft_strlcpy.c ./my_lib/libft/ft_strlen.c ./my_lib/libft/ft_strncmp.c ./my_lib/libft/ft_strrchr.c\
	./my_lib/libft/ft_strnstr.c ./my_lib/libft/ft_substr.c ./my_lib/libft/ft_strjoin.c ./my_lib/libft/ft_calloc.c ./my_lib/libft/ft_strtrim.c ./my_lib/libft/ft_split.c\
	./my_lib/libft/ft_itoa.c ./my_lib/libft/ft_strrev.c ./my_lib/libft/ft_strmapi.c ./my_lib/libft/ft_striteri.c


GNL_SRC = ./my_lib/gnl/get_next_line.c ./my_lib/gnl/get_next_line_utils.c

# SL_SRC = so_long.c

# SL_OBJS = $(SL_SRC:.C=.o)
libft_OBJS = $(LB_SRC:.c=.o)
gnl_OBJS = $(GNL_SRC:.c=.o)

OBJ = $(gnl_OBJS) $(libft_OBJS)

all: $(NAME)

$(NAME) : $(OBJ)
	@$(CC) -c $(FLAGS) $(GNL_SRC) $(LB_SRC) $(SL_OBJS)
	@ar -rcs $(NAME) $(OBJ)

clean:
	find . -name "*.o" -delete

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean, fclean, all, re