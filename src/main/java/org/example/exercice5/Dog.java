package org.example.exercice5;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
public class Dog {
    private String name;
    private String breed;
    private LocalDate birth;

    public Dog(String name, String breed, LocalDate birth) {
        this.name = name;
        this.breed = breed;
        this.birth = birth;
    }
}
