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

    has_many :vecino_entrega, :class_name => 'Entrega', :foreign_key => 'vecino_id'
    has_many :recolector_entrega, :class_name => 'Entrega', :foreign_key => 'recolector_id'
    # paperclip
    has_attached_file :imagen, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment :imagen, presence: true
    do_not_validate_attachment_file_type :imagen  
    
    private
        # se encarga de que el email solo tenga letras minúsculas
        def downcase_email
            self.email.downcase!
        end

end
