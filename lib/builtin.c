#include<stdio.h>
#include<string.h>
#include<stdlib.h>
void print(char* str){
    printf("%s",str);
}
void println(char* str){
    printf("%s\n",str);
}
void printInt(int n){
    printf("%d",n);
}
void printlnInt(int n){
    printf("%d\n",n);
}
char* getString(){
    char* ret=malloc(1000);
    scanf("%s",ret);
    return ret;
}
int getInt(){
    int ret;
    scanf("%d",&ret);
    return ret;
}
char* toString(int i){
    char* ret=malloc(15);
    sprintf(ret,"%d",i);
    return ret;
}
char* stringAdd(char* str1,char* str2){
    char* ret=malloc(strlen(str1)+strlen(str2)+1);
    strcpy(ret,str1);
    strcat(ret,str2);
    return ret;
}
char stringEq(char* str1,char* str2){
    return strcmp(str1,str2)==0;
}
char stringNe(char* str1,char* str2){
    return strcmp(str1,str2)!=0;
}
char stringGe(char* str1,char* str2){
    return strcmp(str1,str2)>=0;
}
char stringGt(char* str1,char* str2){
    return strcmp(str1,str2)>0;
}
char stringLe(char* str1,char* str2){
    return strcmp(str1,str2)<=0;
}
char stringLt(char* str1,char* str2){
    return strcmp(str1,str2)<0;
}
int string__length(char* str){
    return strlen(str);
}
char* string__substring(char* str,int left,int right){
    int len=right-left;
    char* ret=malloc(len+1);
    memcpy(ret,str+left,len);
    ret[len]='\0';
    return ret;
}
int string__parseInt(char* str){
    int ret;
    sscanf(str,"%d",&ret);
    return ret;
}
int string__ord(char* str,int pos){
    return str[pos];
}
int array__size(char* arr){
    return *(((int*)arr)-1);
}
