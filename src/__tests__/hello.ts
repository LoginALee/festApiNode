import request from 'supertest'
import app from '../app'

describe('Test example', () => {
  test('GET /', async () => {
    const res = await request(app).get('/')
    expect(res.status).toBe(200)
  })
})
