package br.edu.utfpr.pb.pw25s.server.controller;

import br.edu.utfpr.pb.pw25s.server.model.User;
import br.edu.utfpr.pb.pw25s.server.repository.UserRepository;
import br.edu.utfpr.pb.pw25s.server.service.UserService;
import br.edu.utfpr.pb.pw25s.server.service.impl.AddressServiceImpl;
import br.edu.utfpr.pb.pw25s.server.shared.GenericResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
@RestController
@RequestMapping("users")
public class UserController {

    private final UserService userService;


    private final UserRepository userRepository;


    private final AddressServiceImpl addressService;

    public UserController(UserService userService, UserRepository userRepository, AddressServiceImpl addressService) {
        this.userService = userService;
        this.userRepository = userRepository;
        this.addressService = addressService;
    }

    @PostMapping
    public GenericResponse createUser(@Valid @RequestBody User user) {
        userService.save(user);
        addressService.saveStart(user);
        return GenericResponse.builder().message("User saved.").build();
    }


    @GetMapping("/validateToken")
    public ResponseEntity<GenericResponse> validateToken() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated()) {
            return ResponseEntity.ok(new GenericResponse("Token is valid."));
        }
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(new GenericResponse("Invalid token."));
    }

}