package com.example.ecom.models;

import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;

    // ✅ Ensure Getters (Important for JSON serialization)
    public Long getId() { return id; }
    public String getName() { return name; }
    public String getEmail() { return email; }

    // ✅ Ensure Setters (Optional, but useful)
    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setEmail(String email) { this.email = email; }
}
