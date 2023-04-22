package labes.facomp.ufpa.br.meuegresso.enumeration;

import lombok.Getter;

@Getter
public enum ResponseType {

    SUCESS_SAVE("Dado salvo com sucesso"),

    SUCESS_UPDATE("Dado atualizado com sucesso"),

    SUCESS_DELETE("Dado deletado com sucesso");


    private String message;

    private ResponseType(String message) {
        this.message = message;
    }

}
