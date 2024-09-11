def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  email.match?(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  valid_emails = []
  emails.each { |email| valid_emails << email if valid?(email) }
  return valid_emails
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  emails.group_by { |email| email.split("@").last.split(".").last }
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  hash_email = {}
  parts = email.split('@')

  domain = parts[1].split(".").first
  tld = parts[1].split(".").last
  hash_email[:domain] = domain
  hash_email[:tld] = tld
  hash_email[:username] = parts[0]

  return hash_email
end

LOCALES = {
  en: {
    subject: "Our website is online",
    body: "Come and visit us!",
    closing: "See you soon",
    signature: "The Team"
  },
  fr: {
    subject: "Notre site est en ligne",
    body: "Venez nous rendre visite !",
    closing: "A bientot",
    signature: "L'équipe"
  },
  de: {
    subject: "Unsere Website ist jetzt online",
    body: "Komm und besuche uns!",
    closing: "Bis bald",
    signature: "Das Team"
  }
}

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
  hash_email = compose_mail(email)

  case hash_email[:tld]
  when "fr"
    hash_email.merge!(LOCALES[:fr])
  when "de"
    hash_email.merge!(LOCALES[:de])
  else
    hash_email.merge!(LOCALES[:en])
  end
  hash_email
end
