#include<stdio.h>
#include "head.h"
#include<string.h>
void charsum()
{
char str[100];//initializing the string
    int i=0;

    printf("Enter any string: ");//input to string
    scanf("%s",str);

    printf("ASCII values of each characters of given string: ");
    while(str[i])//logic to print hexa values of string
{
         printf("%x ",str[i++]);

}  