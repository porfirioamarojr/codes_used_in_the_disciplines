#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#include "nsip_header.h"

#define MAXIMOMSG 500

/**
 * programa cliente
 */
int main(int argc, char *argv[]){
    char buffer[MAXIMOMSG + 1]; // para incluir o terminador nulo
    int tamanho, meusocket;

    int len_send;

    struct nsip_header p;

    struct sockaddr_in destinatario;

    meusocket = socket(AF_INET, SOCK_DGRAM, 0);

    destinatario.sin_family = AF_INET;

    // ip do servidor - 127.0.0.1 se estiver rodando na sua mesma maquina
    destinatario.sin_addr.s_addr = inet_addr("127.0.0.1");

    // porta do servidor
    destinatario.sin_port = htons(2102);

    // zerando o resto da estrutura
    memset(&(destinatario.sin_zero), '\0', sizeof(destinatario.sin_zero));

    strncpy(buffer, "hello world!", 500);

    p.id = 0x01;
    p.type = NSIP_REQ;
    p.checksum = 0;
    p.query = MACADDR;
    //p.query = UDPLIST;
    //p.result;
    memset(&(p.result), '\0', sizeof(p.result));

    /*{
    unsigned char id;        // 8 bits - para identificar a consulta
    unsigned char type;      // 8 bits - Tipo do pacote(request/reply)
    unsigned short checksum; // 16 bits - Tipo da consulta, conforme tipos 
    unsigned short query;    // 16 bits - verificacao de erros
    char result[48];         // 48 bytes:
                             // - Se request: deve ir em branco
                             // - Se reply: contém o resultado da consulta
    }*/

    len_send = sendto(meusocket, &p, sizeof(p), 0, (struct sockaddr *)&destinatario, sizeof(struct sockaddr));
    // vou fazer esse -> sendto(meusocket, buffer, strlen(buffer), 0, (struct sockaddr *)&destinatario, sizeof(struct sockaddr));
    /// Coisas do TCP
    /*connect(meusocket, (struct sockaddr *)&destinatario, sizeof(struct sockaddr));

    tamanho = recv(meusocket, buffer, MAXIMOMSG, 0);

    // terminando a mensagem
    buffer[tamanho] = '\0';

    printf("Hora certa: %s\n", buffer);
    */
    // termina o socket
    close(meusocket);

    return 0;
} 

// Instrucoes para compilacao
// gcc cliente.c -o cliente

