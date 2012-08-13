file {'/root/.ssh':
  ensure => directory,
}

ssh_authorized_key {'root':
  ensure => present,
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCuLz6Fmy50HROjmCKOslAEbPOnz1GPI/L8vYpomK5OfPJ3i2YhFlWgY35GybjNW9nJ7r1I2hrRX+FF8IRhJyuxwu5Fid+pjw33zN5njA3KFyCPuBp52bD1+uCGh5XCnrayINjFB7IUVXFR6gB1bsHmaULpWm8iDhfsinM5I0340Z1JW2XgtDr8xD3uFBAnVa4T+qzqjKdbi/c8MOHXssZtL6IOPQA5BJCh0UWXc7geBEpqAcy/pNiOBRJN0sWVytQe7/mRWjebNQnQ3ZuID5YptZPDUs1tVGYlCKKHum95STP0tASHRtIagi3YFyzfmOoxr77zWYNokb89pcTy1nMv',
  user   => 'root',
  type   => 'ssh-rsa'
}

