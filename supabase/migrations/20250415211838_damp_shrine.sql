/*
  # Update Items Table RLS Policies

  1. Changes
    - Remove existing RLS policies that only check role
    - Add new policies that properly check user authentication
    - Ensure authenticated users can perform CRUD operations
  
  2. Security
    - Enable RLS (already enabled)
    - Add proper user-based policies for all operations
    - Ensure authenticated users can manage items
*/

-- Drop existing policies
DROP POLICY IF EXISTS "Enable delete for authenticated users" ON items;
DROP POLICY IF EXISTS "Enable insert for authenticated users" ON items;
DROP POLICY IF EXISTS "Enable read for authenticated users" ON items;
DROP POLICY IF EXISTS "Enable update for authenticated users" ON items;

-- Create new policies with proper auth checks
CREATE POLICY "Enable read access for authenticated users" 
ON items FOR SELECT 
TO authenticated 
USING (auth.uid() IS NOT NULL);

CREATE POLICY "Enable insert access for authenticated users" 
ON items FOR INSERT 
TO authenticated 
WITH CHECK (auth.uid() IS NOT NULL);

CREATE POLICY "Enable update access for authenticated users" 
ON items FOR UPDATE 
TO authenticated 
USING (auth.uid() IS NOT NULL)
WITH CHECK (auth.uid() IS NOT NULL);

CREATE POLICY "Enable delete access for authenticated users" 
ON items FOR DELETE 
TO authenticated 
USING (auth.uid() IS NOT NULL);