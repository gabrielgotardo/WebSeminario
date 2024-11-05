package br.edu.utfpr.pb.pw25s.server.dto;


import lombok.Data;

@Data
public class AddressDto {

    private Long id;
    private String rua;
    private String cep;
    private String numero;
    private String cidade;
    private String bairro;


}
