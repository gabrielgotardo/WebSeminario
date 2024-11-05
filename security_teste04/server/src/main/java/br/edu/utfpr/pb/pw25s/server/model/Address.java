package br.edu.utfpr.pb.pw25s.server.model;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "tb_address")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String rua;
    private String cep;
    private String cidade;



    public Address( String rua, String cep,  String cidade) {
        this.rua = rua;
        this.cep = cep;

        this.cidade = cidade;

    }
}
