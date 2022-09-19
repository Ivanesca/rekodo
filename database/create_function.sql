delimiter //

create function get_email(al_id int) returns varchar(128)
begin
    declare em varchar(128);
    select email into em from albums a
                                     join users on users.id = a.owner_id where a.id = al_id;
    return em;
end//

delimiter ;