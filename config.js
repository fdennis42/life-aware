// Connection settings for the secure data service (Supabase) — shared with Health Aware.
// The publishable key is designed to be public: access to data is enforced by sign-in
// and storage policies (see supabase-setup.sql), not by keeping this key secret.
window.HA_CONFIG = {
  supabaseUrl: 'https://pdrvzppfxxksxnbbpyiq.supabase.co',
  supabaseAnonKey: 'sb_publishable_Tx7oBXd0KdTZAaZfzpafaA_XnsAcpu9',  // publishable key
  bucket: 'life-data',        // Life Aware: one private file per user
  healthBucket: 'health-data' // read-only use: "Import from Health Aware"
};
