#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <time.h>

#include "nsip_header.h"

#define PORTANUMERO 2102

int main(int argc, char* argv[]){
    char buffer[100];
    int ret_recv;
    int addrlen;

    // recebe o tamanho da estrutura sockaddr_in
    int sockettamanho;
    
    // descritor do socket da escuta
    int meusocket;
    
    struct nsip_header p;

    // informacoes do cliente
    struct sockaddr_in endereco_cliente;
    
    // informacoes do servidor
    struct sockaddr_in endereco_servidor;
    
    // tamanho da estrutura de endereco do skcet usado
    sockettamanho = sizeof(struct sockaddr_in);

    // AF_INET - Comunicacao IP
    // SOCK_STREAM - Trafego confiavel (TCP)
    // SOCK_DGRAM - Datagrama nao confiavel (UDP)
    meusocket = socket(AF_INET, SOCK_DGRAM, 0);
     
    endereco_servidor.sin_family = AF_INET;
    
    // define qualquer ip da interface de rede
    endereco_servidor.sin_addr.s_addr = INADDR_ANY;
    
    // define a porta de escuta do servidor
    endereco_servidor.sin_port = htons(PORTANUMERO);
    
    // zera o resto da estrutura
    memset(&(endereco_servidor.sin_zero), '\0', sizeof(endereco_servidor.sin_zero));
    
    // liga o socket ao enderecamento do servidor
    bind(meusocket, (struct sockaddr *)&endereco_servidor, sizeof(struct sockaddr));
    
    // habilita a escuta de conexoes
    //listen(meusocket, 1);
    
    printf("Servidor escutando conexoes UDP na porta: %d\n",PORTANUMERO);

    //while(1){
        ret_recv = recvfrom(meusocket, &p, sizeof(p), 0, (struct sockaddr *)&endereco_cliente, &addrlen);
        //before -> recvfrom(meusocket, buffer, sizeof(buffer), 0, (struct sockaddr *)&endereco_cliente, &addrlen);
        printf("Recebi: %d bytes\n", ret_recv); // %s apresenta a mensagem
        printf("De: %s\n", inet_ntoa(endereco_cliente.sin_addr));  
        printf("Pacote: \n");
        printf("Id: %x\n", p.id);
        printf("Type: %x\n", p.type);
        printf("Checksum: \n", p.checksum);
        printf("Query: \n", p.query);
        printf("Result: \n", p.result);

    //}    
    //sleep(20);

    /* while(1)
    {
        //espera por uma conexao
        socketconexao = accept(meusocket, (struct sockaddr *)&endereco_cliente, &sockettamanho);
        printf("Uma conexao do endereco %s foi estabelecida - informando a hora certa\n", inet_ntoa(endereco_cliente.sin_addr));
        ticks = time(NULL);
        snprintf(buffer, sizeof(buffer), "%.24s ", ctime(&ticks));
        send(socketconexao, buffer, strlen(buffer), 0);
        close(socketconexao);
    }
    */
    close(meusocket);


    return 0;

}

// Instrucoes de compilacao
// gcc servidor.c -o servidor
