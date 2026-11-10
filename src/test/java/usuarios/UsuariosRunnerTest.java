package usuarios;

import com.intuit.karate.junit5.Karate;

class UsuariosRunnerTest {

    @Karate.Test
    Karate testUsuarios() {
        return Karate.run("usuarios-crud").relativeTo(getClass());
    }
}
