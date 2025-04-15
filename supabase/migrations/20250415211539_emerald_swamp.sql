/*
  # Fix Items Table RLS Policies

  1. Changes
    - Remove duplicate policies
    - Simplify policy conditions
    - Ensure consistent authentication checks

  2. Security
    - Maintain RLS enabled
    - Ensure only authenticated users can perform CRUD operations
    - Use role() function for authentication checks
*/

-- Drop existing policies
DROP POLICY IF EXISTS "Enable delete access for authenticated users" ON items;
DROP POLICY IF EXISTS "Enable insert access for authenticated users" ON items;
DROP POLICY IF EXISTS "Enable read access for authenticated users" ON items;
DROP POLICY IF EXISTS "Enable update access for authenticated users" ON items;
DROP POLICY IF EXISTS "Users can delete items" ON items;
DROP POLICY IF EXISTS "Users can insert items" ON items;
DROP POLICY IF EXISTS "Users can read all items" ON items;
DROP POLICY IF EXISTS "Users can update items" ON items;

-- Create new, simplified policies
CREATE POLICY "Enable read for authenticated users" 
ON items FOR SELECT 
TO authenticated 
USING (auth.role() = 'authenticated');

CREATE POLICY "Enable insert for authenticated users" 
ON items FOR INSERT 
TO authenticated 
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Enable update for authenticated users" 
ON items FOR UPDATE 
TO authenticated 
USING (auth.role() = 'authenticated')
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Enable delete for authenticated users" 
ON items FOR DELETE 
TO authenticated 
USING (auth.role() = 'authenticated');