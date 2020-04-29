# RoboX

The API middleware and Heroku Orchestration Tool

## API Access
The api is protected by basic auth. The credentials are stored in the ENV under 
```yaml
API_NAME: 'api'
API_PASSWORD: 'password'
```

## Admin Access
The web admin is powered by administrate can be accessed via /management. The credentials are stored in the ENV under.

```yaml
ADMIN_NAME: 'manager'
ADMIN_PASSWORD: 'password'
```

## Blueprint Updates
```bash
rake blueprints:update 
```
