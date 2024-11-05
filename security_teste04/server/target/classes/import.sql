

INSERT INTO tb_category (name, desconto) VALUES ('Pesca', 3.0);
INSERT INTO tb_category (name, desconto) VALUES ('Vestuário', 1.5);
INSERT INTO tb_category (name, desconto) VALUES ('Náutica', 2.0);
INSERT INTO tb_category (name, desconto) VALUES ('Tiro Esportivo', 1.0);
INSERT INTO tb_category (name, desconto) VALUES ('Camping', 2.5);
INSERT INTO tb_category (name, desconto) VALUES ('Guias', 0.5);


-- Categoria Pesca
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Vara de Pesca Carbono', 'Vara de pesca em carbono, 2.1m', 350.0, 1, 4.8);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Molinete Shimano', 'Molinete Shimano para pesca em água salgada', 550.0, 1, 4.9);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Isca Artificial', 'Isca artificial tipo camarão', 25.0, 1, 4.7);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Linha Multifilamento 300m', 'Linha de pesca multifilamento, 30lb', 75.0, 1, 4.6);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Carretilha Abu Garcia', 'Carretilha Abu Garcia de alta performance', 950.0, 1, 4.8);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Anzol Eagle Claw', 'Anzol Eagle Claw, tamanho 6', 15.0, 1, 4.5);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Caixa de Pesca', 'Caixa de pesca com divisórias ajustáveis', 120.0, 1, 4.7);

-- Categoria Vestuário
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Calça de Pesca', 'Calça de pesca impermeável', 180.0, 2, 4.5);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Camisa de Pesca UV', 'Camisa de pesca com proteção UV', 90.0, 2, 4.6);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Chapéu de Pesca', 'Chapéu de pesca com aba larga', 50.0, 2, 4.4);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Botas de Pesca', 'Botas de pesca impermeáveis', 250.0, 2, 4.7);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Luvas de Pesca', 'Luvas de pesca antideslizantes', 40.0, 2, 4.5);

-- Categoria Náutica
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Barco Inflável', 'Barco inflável para 4 pessoas', 1800.0, 3, 4.8);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Motor de Popa 15HP', 'Motor de popa 15HP, 4 tempos', 4500.0, 3, 4.9);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Coletes Salva-Vidas', 'Conjunto com 4 coletes salva-vidas', 400.0, 3, 4.6);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Ancoras', 'Âncoras galvanizadas 5kg', 150.0, 3, 4.5);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('GPS Náutico', 'GPS náutico à prova d\'água', 950.0, 3, 4.7);

-- Categoria Tiro Esportivo
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Carabina de Pressão', 'Carabina de pressão calibre 4.5mm', 800.0, 4, 4.8);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Alvo de Papel', 'Pacote com 100 alvos de papel', 30.0, 4, 4.3);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Munição 4.5mm', 'Chumbinhos calibre 4.5mm, 500 unidades', 25.0, 4, 4.7);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Luneta 4x32', 'Luneta de precisão 4x32', 200.0, 4, 4.6);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Porta Munição', 'Porta munição para cinto', 40.0, 4, 4.4);

-- Categoria Camping
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Barraca 4 Pessoas', 'Barraca de camping para 4 pessoas', 300.0, 5, 4.8);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Saco de Dormir', 'Saco de dormir para temperaturas até -5°C', 120.0, 5, 4.7);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Lanterna LED', 'Lanterna LED recarregável', 75.0, 5, 4.5);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Fogareiro Portátil', 'Fogareiro portátil a gás', 60.0, 5, 4.6);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Mochila de Camping 60L', 'Mochila de camping com capacidade de 60 litros', 250.0, 5, 4.7);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Kit de Panelas', 'Kit de panelas para camping', 90.0, 5, 4.4);

-- Categoria Guias
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Guia de Pesca Esportiva', 'Guia completo para pesca esportiva', 35.0, 6, 4.5);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Guia de Acampamento', 'Guia prático para acampamentos', 25.0, 6, 4.6);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Mapa de Trilhas', 'Mapa detalhado de trilhas e caminhos', 20.0, 6, 4.4);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Guia de Sobrevivência', 'Guia de técnicas de sobrevivência', 40.0, 6, 4.7);
INSERT INTO tb_product (name, description, price, category_id, rating) VALUES ('Manual de Tiro Esportivo', 'Manual para iniciantes em tiro esportivo', 30.0, 6, 4.5);









