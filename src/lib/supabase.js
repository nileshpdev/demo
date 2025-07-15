import { createClient } from '@supabase/supabase-js'

const supabaseUrl = 'https://pjsofefgdbrqmtcbvwco.supabase.co'
const supabaseKey = process.env.SUPABASE_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBqc29mZWZnZGJycW10Y2J2d2NvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI1OTEyNzAsImV4cCI6MjA2ODE2NzI3MH0.m_9rj6-T3f2Dr9OljoGYDA5W7nDF4vDAlyxyjTfVB0A'
export const supabase = createClient(supabaseUrl, supabaseKey)
