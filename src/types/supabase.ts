export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export interface Database {
  public: {
    Tables: {
      items: {
        Row: {
          id: number
          name: string
          quantity: number
          category: string
          created_at: string
        }
        Insert: {
          id?: number
          name: string
          quantity: number
          category: string
          created_at?: string
        }
        Update: {
          id?: number
          name?: string
          quantity?: number
          category?: string
          created_at?: string
        }
      }
    }
  }
}