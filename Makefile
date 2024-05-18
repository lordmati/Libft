# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: misaguir <misaguir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/18 19:29:39 by misaguir          #+#    #+#              #
#    Updated: 2023/10/15 17:30:23 by misaguir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS =  ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c  ft_isalpha.c \
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c \
		ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c \
		ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
		ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
		ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c \
		
SRCS_BONUS = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c \
				ft_lstclear_bonus.c ft_lstdelone_bonus.c \
				ft_lstiter_bonus.c ft_lstlast_bonus.c \
				ft_lstmap_bonus.c ft_lstnew_bonus.c \
				ft_lstsize_bonus.c \
				
CFLAGS = -Wall -Werror -Wextra
OBJS_SRCS = $(SRCS:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)
AR = ar rcs
RM = rm -rf
CC = gcc

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ 

all: $(NAME)

bonus: $(OBJS_SRCS) $(OBJS_BONUS)
	$(AR) $(NAME) $(OBJS_SRCS) $(OBJS_BONUS)
$(NAME): $(OBJS_SRCS)
	$(AR) $(NAME) $(OBJS_SRCS)

clean:
	@$(RM) $(OBJS_SRCS) $(OBJS_BONUS)

fclean: clean
	@$(RM) $(NAME)
	
re: fclean all

.PHONY: all clean fclean bonus re