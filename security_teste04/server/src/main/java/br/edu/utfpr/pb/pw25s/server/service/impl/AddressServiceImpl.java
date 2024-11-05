package br.edu.utfpr.pb.pw25s.server.service.impl;

import br.edu.utfpr.pb.pw25s.server.model.Address;
import br.edu.utfpr.pb.pw25s.server.model.User;
import br.edu.utfpr.pb.pw25s.server.repository.AddressRepository;
import br.edu.utfpr.pb.pw25s.server.service.IAddressService;
import br.edu.utfpr.pb.pw25s.server.service.UserService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class AddressServiceImpl extends CrudServiceImpl<Address, Long> implements IAddressService {


    private final AddressRepository addressRepository;
    private final UserService userService;
    public AddressServiceImpl(AddressRepository addressRepository, UserService userService) {
        this.addressRepository = addressRepository;
        this.userService = userService;
    }

    @Override
    protected JpaRepository<Address, Long> getRepository() {
        return addressRepository;
    }







    public void saveStart(User user){

        Address address = new Address();
        address.setCep("-");
        address.setCidade("-");
        address.setRua("-");
       save(address);
    }


}
