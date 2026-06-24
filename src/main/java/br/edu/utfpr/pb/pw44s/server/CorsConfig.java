package br.edu.utfpr.pb.pw44s.server; // MUDE SE NECESSÁRIO PARA O SEU PACOTE EXATO

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                // Permite acesso de qualquer origem (ideal para desenvolvimento)
                .allowedOrigins("*") 
                // Permite todos os métodos HTTP (inclusive o OPTIONS que o navegador faz antes do login)
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS", "HEAD", "TRACE", "CONNECT")
                // Permite envio de todos os cabeçalhos (como o de Authorization com o Token)
                .allowedHeaders("*");
    }
}