/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rafli
 */
@Entity
@Table(name = "form")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Form.findAll", query = "SELECT f FROM Form f"),
    @NamedQuery(name = "Form.findByNo", query = "SELECT f FROM Form f WHERE f.no = :no"),
    @NamedQuery(name = "Form.findByNama", query = "SELECT f FROM Form f WHERE f.nama = :nama"),
    @NamedQuery(name = "Form.findByJenisKelamin", query = "SELECT f FROM Form f WHERE f.jenisKelamin = :jenisKelamin"),
    @NamedQuery(name = "Form.findByUmur", query = "SELECT f FROM Form f WHERE f.umur = :umur"),
    @NamedQuery(name = "Form.findByAlamat", query = "SELECT f FROM Form f WHERE f.alamat = :alamat"),
    @NamedQuery(name = "Form.findByRiwayatSakit", query = "SELECT f FROM Form f WHERE f.riwayatSakit = :riwayatSakit"),
    @NamedQuery(name = "Form.findByPertanyaan1", query = "SELECT f FROM Form f WHERE f.pertanyaan1 = :pertanyaan1"),
    @NamedQuery(name = "Form.findByPertanyaan2", query = "SELECT f FROM Form f WHERE f.pertanyaan2 = :pertanyaan2"),
    @NamedQuery(name = "Form.findByPertanyaan3", query = "SELECT f FROM Form f WHERE f.pertanyaan3 = :pertanyaan3"),
    @NamedQuery(name = "Form.findByPertanyaan4", query = "SELECT f FROM Form f WHERE f.pertanyaan4 = :pertanyaan4"),
    @NamedQuery(name = "Form.findByPertanyaan5", query = "SELECT f FROM Form f WHERE f.pertanyaan5 = :pertanyaan5")})
public class Form implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "no")
    private Integer no;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "nama")
    private String nama;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "jenis_kelamin")
    private String jenisKelamin;
    @Basic(optional = false)
    @NotNull
    @Column(name = "umur")
    private int umur;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "alamat")
    private String alamat;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "riwayat_sakit")
    private String riwayatSakit;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "pertanyaan1")
    private String pertanyaan1;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "pertanyaan2")
    private String pertanyaan2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "pertanyaan3")
    private String pertanyaan3;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "pertanyaan4")
    private String pertanyaan4;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "pertanyaan5")
    private String pertanyaan5;

    public Form() {
    }

    public Form(Integer no) {
        this.no = no;
    }

    public Form(Integer no, String nama, String jenisKelamin, int umur, String alamat, String riwayatSakit, String pertanyaan1, String pertanyaan2, String pertanyaan3, String pertanyaan4, String pertanyaan5) {
        this.no = no;
        this.nama = nama;
        this.jenisKelamin = jenisKelamin;
        this.umur = umur;
        this.alamat = alamat;
        this.riwayatSakit = riwayatSakit;
        this.pertanyaan1 = pertanyaan1;
        this.pertanyaan2 = pertanyaan2;
        this.pertanyaan3 = pertanyaan3;
        this.pertanyaan4 = pertanyaan4;
        this.pertanyaan5 = pertanyaan5;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }
    
    public String getJenisKelamin() {
        return jenisKelamin;
    }

    public void setJenisKelamin(String jenisKelamin) {
        this.jenisKelamin = jenisKelamin;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public int getUmur() {
        return umur;
    }

    public void setUmur(int umur) {
        this.umur = umur;
    }

    public String getRiwayatSakit() {
        return riwayatSakit;
    }

    public void setRiwayatSakit(String riwayatSakit) {
        this.riwayatSakit = riwayatSakit;
    }

    public String getPertanyaan1() {
        return pertanyaan1;
    }

    public void setPertanyaan1(String pertanyaan1) {
        this.pertanyaan1 = pertanyaan1;
    }

    public String getPertanyaan2() {
        return pertanyaan2;
    }

    public void setPertanyaan2(String pertanyaan2) {
        this.pertanyaan2 = pertanyaan2;
    }

    public String getPertanyaan3() {
        return pertanyaan3;
    }

    public void setPertanyaan3(String pertanyaan3) {
        this.pertanyaan3 = pertanyaan3;
    }

    public String getPertanyaan4() {
        return pertanyaan4;
    }

    public void setPertanyaan4(String pertanyaan4) {
        this.pertanyaan4 = pertanyaan4;
    }

    public String getPertanyaan5() {
        return pertanyaan5;
    }

    public void setPertanyaan5(String pertanyaan5) {
        this.pertanyaan5 = pertanyaan5;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (no != null ? no.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Form)) {
            return false;
        }
        Form other = (Form) object;
        if ((this.no == null && other.no != null) || (this.no != null && !this.no.equals(other.no))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Form[ no=" + no + " ]";
    }
    
}
