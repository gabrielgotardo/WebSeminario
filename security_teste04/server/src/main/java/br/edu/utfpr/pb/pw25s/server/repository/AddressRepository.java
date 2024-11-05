package br.edu.utfpr.pb.pw25s.server.repository;


import br.edu.utfpr.pb.pw25s.server.model.Address;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface AddressRepository extends JpaRepository<Address, Long> {



}
