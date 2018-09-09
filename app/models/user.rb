class User < ApplicationRecord
    # con este método encriptamos el password y generamos el método 
    # authenticate que será usado por knock
    has_secure_password
    # antes de guardar el email se pone en minúsculas
    before_save :downcase_email
    # campos obligatorios
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :name, 
        presence: true
    validates :email, 
        presence: true, 
        length: { maximum: 255},
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
    validates :password,
        presence: true,
        length: { minimum: 6 },
        allow_nil: true
    
    private
        # se encarga de que el email solo tenga letras minúsculas
        def downcase_email
            self.email.downcase!
        end

end
