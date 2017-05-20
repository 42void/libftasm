/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: avanhoeg <avanhoeg@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/10 18:26:20 by avanhoeg          #+#    #+#             */
/*   Updated: 2015/05/09 21:55:43 by mblet            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# define MACH_SYSCALL(nb)	0x2000000 | nb
# define STDOUT				1
# define WRITE				4

# include <unistd.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, const char *s2);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);
size_t	ft_strlen(const char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *s1, const void *s2, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);
void	ft_putchar(char c);
void	ft_putstr(char *str);
char 	*ft_strnew(size_t size);
char	*ft_strncat(char *s1, const char *s2, size_t n);
char 	*ft_strchr(const char *s, int c);

#endif
