/*
  # Create items table for inventory management

  1. New Tables
    - `items`
      - `id` (bigint, primary key)
      - `name` (text, not null)
      - `quantity` (integer, not null)
      - `category` (text, not null)
      - `created_at` (timestamptz, default now())

  2. Security
    - Enable RLS on `items` table
    - Add policies for authenticated users to perform CRUD operations
*/

CREATE TABLE IF NOT EXISTS items (
  id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name text NOT NULL,
  quantity integer NOT NULL,
  category text NOT NULL,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE items ENABLE ROW LEVEL SECURITY;

-- Allow authenticated users to read all items
CREATE POLICY "Users can read all items"
  ON items
  FOR SELECT
  TO authenticated
  USING (true);

-- Allow authenticated users to insert items
CREATE POLICY "Users can insert items"
  ON items
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

-- Allow authenticated users to update their items
CREATE POLICY "Users can update items"
  ON items
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Allow authenticated users to delete items
CREATE POLICY "Users can delete items"
  ON items
  FOR DELETE
  TO authenticated
  USING (true);