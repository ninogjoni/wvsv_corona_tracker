package de.govhackathon.wvsvcoronatracker.config;

import de.govhackathon.wvsvcoronatracker.model.Role;
import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import de.govhackathon.wvsvcoronatracker.repositories.AppConfigRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import java.util.Optional;

@EnableWebSecurity
@Configuration
@Profile("prod")
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private static final Logger LOG = LoggerFactory.getLogger(SecurityConfig.class);

    private AppConfigRepository configRepository;


    @Autowired
    public SecurityConfig(AppConfigRepository configRepository) {
        this.configRepository = configRepository;
        Optional<AppConfig> apiKey = this.configRepository.findById(AppConfig.API_KEY);
        Optional<AppConfig> apiSecret = this.configRepository.findById(AppConfig.API_SECRET);
        if (apiKey.isPresent() && apiSecret.isPresent()) {
            LOG.info("Adding API user settings");
        } else {
            LOG.error("Not configured API AUTH!!");
        }
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers(AppConfig.API_PATH + "/**").hasRole(Role.APP_USER.name())
                .anyRequest().anonymous()
                .and()
                .httpBasic()
                .and()
                .csrf()
                .disable();
    }
}
