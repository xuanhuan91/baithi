package com.example.examwcd.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "employee")
public class EmployeeEntity implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "name")
    private String name;
    private String birth;
    private String address;
    private String position;
    private String department;

    public EmployeeEntity() {
    }
    public EmployeeEntity(Integer id,String name, String birth, String address, String position, String department) {
        this.name = name;
        this.address = address;
        this.id = id;
        this.birth = birth;
        this.position = position;
        this.department = department;
    }
    public EmployeeEntity(String name, String birth, String address, String position, String department) {
        this.name = name;
        this.address = address;
        this.birth = birth;
        this.position = position;
        this.department = department;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
