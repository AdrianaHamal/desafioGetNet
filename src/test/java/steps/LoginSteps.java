package steps;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import org.junit.Assert;
import utils.RestUtils;

import java.util.Map;

public class LoginSteps {

    Map<String, String> mapDados;

    @Dado("que sejam preenchidos os valores de login com")
    public void queSejamPreenchidosOsValoresDeLoginCom(Map<String, String> map) {
        mapDados = map;
    }
    @Quando("que seja realizado o POST do Login")
    public void queSejaRealizadoOPOSTDoLogin() {
        RestUtils.postRequest("https://reqres.in/api/register", mapDados);
    }
    @Entao("o sistema devolve o status {int}")
    public void oSistemaDevolveOStatus(int status) {
        Assert.assertEquals(status, RestUtils.getStatusCode());
    }

    @Entao("valido que o campo {string} retornou o valor {string}")
    public void validoQueOCampoRetornouOValor(String key, String value) {
        Assert.assertEquals(value, RestUtils.getResponse(key));
    }

    @Entao("valido que o campo {string} retornou o valor {int}")
    public void validoQueOCampoRetornouOValor(String key, int value) {
        Assert.assertEquals(value, RestUtils.getResponse(key));
    }
}
