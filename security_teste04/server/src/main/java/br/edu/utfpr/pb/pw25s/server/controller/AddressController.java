package br.edu.utfpr.pb.pw25s.server.controller;

import br.edu.utfpr.pb.pw25s.server.dto.AddressDto;
import br.edu.utfpr.pb.pw25s.server.model.Address;
import br.edu.utfpr.pb.pw25s.server.service.IAddressService;
import org.modelmapper.ModelMapper;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("address")
public class AddressController extends CrudController<Address, AddressDto, Long> {
    private final IAddressService addressService;
    private final ModelMapper modelMapper;

    // Construtor para injeção de dependências
    public AddressController(IAddressService addressService, ModelMapper modelMapper) {
        super(Address.class, AddressDto.class);
        this.addressService = addressService;
        this.modelMapper = modelMapper;
    }

    // Sobrescreve o método getService() da classe CrudController
    @Override
    protected IAddressService getService() {
        return addressService;
    }

    // Sobrescreve o método getModelMapper() da classe CrudController
    @Override
    protected ModelMapper getModelMapper() {
        return modelMapper;
    }
}
