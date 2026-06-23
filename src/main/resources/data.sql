-- Category
insert into tb_category (name) values ('Informática');
insert into tb_category (name) values ('UD');
insert into tb_category (name) values ('Cozinha');
insert into tb_category (name) values ('Móveis');
insert into tb_category (name) values ('Eletrônico');

-- Product
insert into tb_product (name, description, price, category_id) values ('Refrigerador 429L','Refrigerador duplex Frost Free 429L, prateleiras reguláveis e baixo consumo.',1990.0,2);
insert into tb_product (name, description, price, category_id) values ('Notebook Arus 15.6','Notebook Core i7, 16GB RAM, SSD 512GB e tela Full HD de 15.6 polegadas.',2449.0,1);
insert into tb_product (name, description, price, category_id) values ('Monitor 27pol','Monitor Gamer IPS de 27 polegadas, 144Hz, 1ms e suporte AMD FreeSync.',1129.99,1);
insert into tb_product (name, description, price, category_id) values ('Kit Teclado e Mouse','Combo com teclado ABNT2 macio e mouse óptico ergonômico de 5 botões.',199.0,1);
insert into tb_product (name, description, price, category_id) values ('Smartphone XYZ','Smartphone premium com tela AMOLED 9, 12GB RAM, câmera 108MP e 5G.',9999.0,5);
insert into tb_product (name, description, price, category_id) values ('TV LCD 75pol','Smart TV 4K de 75 polegadas com HDR10, Wi-Fi integrado e 5 portas HDMI.',7555.0,5);
insert into tb_product (name, description, price, category_id) values ('Fogão 6 Bocas','Fogão de piso em aço inox com 6 bocas, acendimento automático e forno limpa fácil.', 799.99,3);
insert into tb_product (name, description, price, category_id) values ('Roteador Wi-Fi 5.4GhZ','Roteador Wi-Fi dual-band 5.4GHz com 6 antenas externas de alto ganho.',1299.0,1);

-- User - password: 123
INSERT INTO tb_user(display_name, username, password) VALUES ('Administrador', 'admin','$2a$10$WX1T4NwuBlXzw6yBrtOBg.g91XoUprVF7SQMK1bYu8bYquNdzeKL2');
INSERT INTO tb_user(display_name, username, password) VALUES ('Teste', 'test','$2a$10$WX1T4NwuBlXzw6yBrtOBg.g91XoUprVF7SQMK1bYu8bYquNdzeKL2');

INSERT INTO tb_endereco (rua, numero, bairro, cidade, estado, cep, user_id) VALUES ('Avenida Tupi', '1000', 'Centro', 'Pato Branco', 'PR', '85501-000', 1);

INSERT INTO tb_pedido (data, valor_total, status, forma_pagamento, user_id, endereco_id) VALUES (CURRENT_TIMESTAMP, 1990.00, 'FINALIZADO', 'PIX', 1, 1);

INSERT INTO tb_item_pedido (quantidade, valor, product_id, pedido_id) VALUES (1, 1990.00, 1, 1);