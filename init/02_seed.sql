CREATE TABLE IF NOT EXISTS app.orders (
  id bigserial PRIMARY KEY,
  customer text NOT NULL,
  amount numeric(10,2) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now()
);
INSERT INTO app.orders (customer, amount) VALUES
('Alice', 19.99), ('Bob', 49.50), ('Carla', 5.00);
GRANT SELECT ON app.orders TO app_read;
GRANT SELECT, INSERT, UPDATE, DELETE ON app.orders TO app_write;
