CREATE ROLE  readonly_role ;

GRANT SELECT ON *.* TO readonly_role;

create user readonly_usr identified with sha256_password by '123' ;

grant readonly_role to readonly_usr ;

CREATE ROLE  stage_role ;

GRANT create , insert ON stage.* TO stage_role;

create user stage_usr identified with sha256_password by '123' ;

grant stage_role to stage_usr ;