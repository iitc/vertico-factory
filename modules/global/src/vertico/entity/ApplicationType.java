package vertico.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum ApplicationType implements EnumClass<String> {

    container("container"),
    virtualmachine("vm");

    private String id;

    ApplicationType(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static ApplicationType fromId(String id) {
        for (ApplicationType at : ApplicationType.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}