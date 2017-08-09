package vertico.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.math.BigDecimal;

@NamePattern("%s|username")
@Table(name = "VERTICO_DONORS")
@Entity(name = "vertico$Donors")
public class Donors extends StandardEntity {
    private static final long serialVersionUID = 603684922554295318L;

    @Column(name = "USERNAME")
    protected String username;

    @NotNull(message = "{msg://vertico.entity/already.present}")
    @Column(name = "EMAIL", nullable = false, unique = true, length = 100)
    protected String email;

    @Column(name = "CREDITS")
    protected BigDecimal credits;

    @Column(name = "ACTIVE")
    protected Boolean active;

    @NotNull(message = "{msg://vertico.entity/NotNull}")
    @Column(name = "SECRET_KEY")
    protected String secretKey;

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }


    public void setActive(Boolean active) {
        this.active = active;
    }

    public Boolean getActive() {
        return active;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }

    public String getSecretKey() {
        return secretKey;
    }


    public void setCredits(BigDecimal credits) {
        this.credits = credits;
    }

    public BigDecimal getCredits() {
        return credits;
    }


    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }


}