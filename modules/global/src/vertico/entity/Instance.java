package vertico.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Lob;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

@NamePattern("%s, %s , %s  , %s, %s|status,nickname,ram,diskSpace,cpu,id")
@Table(name = "VERTICO_INSTANCE")
@Entity(name = "vertico$Instance")
public class Instance extends StandardEntity {
    private static final long serialVersionUID = -6562778579881919568L;

    @Column(name = "NICKNAME")
    protected String nickname;

    @Lob
    @Column(name = "OS")
    protected String os;

    @Column(name = "PUBLIC_IP")
    protected String publicIP;

    @Column(name = "PRIVATE_IP")
    protected String privateIP;

    @Column(name = "RAM")
    protected String ram;

    @Column(name = "DISK_SPACE")
    protected String diskSpace;

    @Column(name = "CPU")
    protected String cpu;

    @Column(name = "STATUS", nullable = false)
    protected String status;

    @Column(name = "CREDITS", precision = 19, scale = 3)
    protected BigDecimal credits;

    @NotNull(message = "{msg://vertico.entity/NotNull}")
    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "open"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "DONOR_ID")
    protected Donors donor;


    @OneToOne(fetch = FetchType.LAZY, mappedBy = "deployInstance")
    protected Applications applications;

    @Lob
    @Column(name = "INFO")
    protected String info;

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getNickname() {
        return nickname;
    }


    public void setInfo(String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }


    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getCpu() {
        return cpu;
    }


    public void setApplications(Applications applications) {
        this.applications = applications;
    }

    public Applications getApplications() {
        return applications;
    }


    public void setDonor(Donors donor) {
        this.donor = donor;
    }

    public Donors getDonor() {
        return donor;
    }


    public void setOs(String os) {
        this.os = os;
    }

    public String getOs() {
        return os;
    }

    public void setPublicIP(String publicIP) {
        this.publicIP = publicIP;
    }

    public String getPublicIP() {
        return publicIP;
    }

    public void setPrivateIP(String privateIP) {
        this.privateIP = privateIP;
    }

    public String getPrivateIP() {
        return privateIP;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getRam() {
        return ram;
    }

    public void setDiskSpace(String diskSpace) {
        this.diskSpace = diskSpace;
    }

    public String getDiskSpace() {
        return diskSpace;
    }

    public void setStatus(Status status) {
        this.status = status == null ? null : status.getId();
    }

    public Status getStatus() {
        return status == null ? null : Status.fromId(status);
    }

    public void setCredits(BigDecimal credits) {
        this.credits = credits;
    }

    public BigDecimal getCredits() {
        return credits;
    }


}