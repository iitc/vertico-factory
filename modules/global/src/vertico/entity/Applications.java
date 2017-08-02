package vertico.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.validation.constraints.NotNull;
import javax.persistence.Lob;
import javax.validation.constraints.Pattern;

@NamePattern("%s|appName")
@Table(name = "VERTICO_APPLICATIONS")
@Entity(name = "vertico$Applications")
public class Applications extends StandardEntity {
    private static final long serialVersionUID = -3958120836064909494L;

    @NotNull(message = "{msg://vertico.entity/NotNull}")
    @Column(name = "APP_NAME")
    protected String appName;

    @NotNull(message = "{msg://vertico.entity/NotNull}")
    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "open"})
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "DEPLOY_INSTANCE_ID")
    protected Instance deployInstance;

    @NotNull
    @Column(name = "IMAGE_LOCATION", nullable = false)
    protected String imageLocation;

    @NotNull
    @Column(name = "STATUS", nullable = false)
    protected String status;

    @NotNull(message = "{msg://vertico.entity/apptype}")
    @Column(name = "APP_TYPE", nullable = false)
    protected String appType;

    @Lob
    @Column(name = "INIT_SCRIPT")
    protected String initScript;

    @Lob
    @Column(name = "STOP_SCRIPT")
    protected String stopScript;

    @Lob
    @Column(name = "APPLOG")
    protected String applog;

    public void setApplog(String applog) {
        this.applog = applog;
    }

    public String getApplog() {
        return applog;
    }


    public void setInitScript(String initScript) {
        this.initScript = initScript;
    }

    public String getInitScript() {
        return initScript;
    }

    public void setStopScript(String stopScript) {
        this.stopScript = stopScript;
    }

    public String getStopScript() {
        return stopScript;
    }


    public void setAppType(ApplicationType appType) {
        this.appType = appType == null ? null : appType.getId();
    }

    public ApplicationType getAppType() {
        return appType == null ? null : ApplicationType.fromId(appType);
    }


    public void setStatus(Status status) {
        this.status = status == null ? null : status.getId();
    }

    public Status getStatus() {
        return status == null ? null : Status.fromId(status);
    }


    public void setImageLocation(String imageLocation) {
        this.imageLocation = imageLocation;
    }

    public String getImageLocation() {
        return imageLocation;
    }


    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getAppName() {
        return appName;
    }

    public void setDeployInstance(Instance deployInstance) {
        this.deployInstance = deployInstance;
    }

    public Instance getDeployInstance() {
        return deployInstance;
    }


}