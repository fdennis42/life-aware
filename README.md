# Life Aware

Health tracking and budget management in one installable web app for iPhone and Mac.

**Health** — headaches, blood pressure, back/shoulder pain, weight, IBS/bowel (with volume) and optional women's health (period flow, cycle predictions, symptoms, mood, ovulation/pregnancy tests, basal temperature), with medications/actions, trends and a provider report.

**Money** — a monthly budget (fixed bills, debt payments, everyday spending, one-time items), quick expense entry, "Mark paid" for bills, an over-budget dashboard (spent vs budget, safe-to-spend per day, projected month end, alerts), cash flow, debts in payoff order, savings/net worth, month-by-month trends and a printable budget report.

## Accounts and data
- Same sign-in as Health Aware (invitation only). Each person's health and money data is one private JSON file, `life-data/<user id>/data.json`, readable only by that user.
- Works offline; syncs when back online. Settings → Save backup / Restore backup covers health and money (Health Aware backups can be restored too).
- Settings → Import from Health Aware copies existing health entries. Settings → Budget → Import plan file loads a budget plan (`life-aware-plan` JSON).
- No personal data is stored in this repository.

## Setup
Uses the Health Aware Supabase project. Run `supabase-setup.sql` once in the SQL Editor to create the private `life-data` bucket, and add `https://fdennis42.github.io/life-aware/**` to Authentication → URL Configuration → Redirect URLs.

Not medical or financial advice.
