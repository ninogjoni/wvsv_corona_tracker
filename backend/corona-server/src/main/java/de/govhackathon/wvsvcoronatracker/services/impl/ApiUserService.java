package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.Role;
import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import de.govhackathon.wvsvcoronatracker.repositories.AppConfigRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Service
public class ApiUserService implements UserDetailsService {

    @Autowired
    private AppConfigRepository configRepository;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Optional<AppConfig> apiKey = this.configRepository.findById(AppConfig.API_KEY);
        Optional<AppConfig> apiSecret = this.configRepository.findById(AppConfig.API_SECRET);
        if (apiKey.isPresent()) {
            return new UserDetails() {
                @Override
                public Collection<? extends GrantedAuthority> getAuthorities() {
                    List<GrantedAuthority> authorities
                            = new ArrayList<>();
                    authorities.add(new SimpleGrantedAuthority(Role.APP_USER.toString()));
                    return authorities;
                }

                @Override
                public String getPassword() {
                    return apiSecret.get().getValue();
                }

                @Override
                public String getUsername() {
                    return apiKey.get().getValue();
                }

                @Override
                public boolean isAccountNonExpired() {
                    return true;
                }

                @Override
                public boolean isAccountNonLocked() {
                    return true;
                }

                @Override
                public boolean isCredentialsNonExpired() {
                    return true;
                }

                @Override
                public boolean isEnabled() {
                    return true;
                }
            };
        } else {
            return null;
        }
    }
}
